.class public Lcom/googlecode/mp4parser/util/UUIDConverter;
.super Ljava/lang/Object;
.source "UUIDConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([B)Ljava/util/UUID;
    .locals 6
    .parameter "uuidBytes"

    .prologue
    .line 44
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1
.end method

.method public static convert(Ljava/util/UUID;)[B
    .locals 10
    .parameter "uuid"

    .prologue
    const/16 v9, 0x10

    const/16 v0, 0x8

    .line 28
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 29
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 30
    new-array v6, v9, [B

    .line 32
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    rsub-int/lit8 v7, v1, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    if-ge v0, v9, :cond_1

    .line 36
    rsub-int/lit8 v1, v0, 0x7

    mul-int/lit8 v1, v1, 0x8

    ushr-long v1, v4, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_1
    return-object v6
.end method
