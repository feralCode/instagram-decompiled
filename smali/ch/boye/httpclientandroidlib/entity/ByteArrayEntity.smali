.class public Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final content:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 45
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source byte array may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->content:[B

    .line 50
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outstream"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 69
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 70
    return-void
.end method
