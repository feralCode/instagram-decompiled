.class Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "FormatCache.java"


# instance fields
.field private hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter "keys"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    .line 168
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 175
    if-ne p0, p1, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 181
    .end local p1
    :goto_0
    return v0

    .line 178
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;

    if-nez v0, :cond_1

    .line 179
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    check-cast p1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;

    .end local p1
    iget-object v1, p1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 189
    iget v1, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    if-nez v1, :cond_2

    .line 191
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 192
    if-eqz v4, :cond_0

    .line 193
    mul-int/lit8 v0, v0, 0x7

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v0, v4

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iput v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    .line 198
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    return v0
.end method
