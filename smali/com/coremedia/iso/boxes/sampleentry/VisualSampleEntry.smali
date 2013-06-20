.class public Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "VisualSampleEntry.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE1:Ljava/lang/String; = "mp4v"

.field public static final TYPE2:Ljava/lang/String; = "s263"

.field public static final TYPE3:Ljava/lang/String; = "avc1"

.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = "encv"


# instance fields
.field private compressorname:Ljava/lang/String;

.field private depth:I

.field private frameCount:I

.field private height:I

.field private horizresolution:D

.field private predefined:[J

.field private vertresolution:D

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    const-wide/high16 v0, 0x4052

    .line 75
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    .line 66
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D

    .line 67
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I

    .line 70
    const/16 v0, 0x18

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    .line 76
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter "content"

    .prologue
    const-wide/16 v5, 0x0

    const/16 v1, 0x1f

    .line 136
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 137
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v2, v0

    .line 138
    sget-boolean v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, v5, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "reserved byte not 0"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v2, v0

    .line 140
    sget-boolean v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "reserved byte not 0"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 142
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 143
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 144
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->width:I

    .line 145
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->height:I

    .line 146
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D

    .line 147
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D

    .line 148
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 149
    sget-boolean v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "reserved byte not 0"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 150
    :cond_2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I

    .line 151
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 152
    if-le v0, v1, :cond_3

    .line 153
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid compressor name displayable data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 156
    :cond_3
    new-array v2, v0, [B

    .line 157
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 158
    invoke-static {v2}, Lcom/coremedia/iso/Utf8;->convert([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->compressorname:Ljava/lang/String;

    .line 159
    if-ge v0, v1, :cond_4

    .line 160
    rsub-int/lit8 v0, v0, 0x1f

    new-array v0, v0, [B

    .line 161
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 164
    :cond_4
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I

    .line 165
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    .line 166
    sget-boolean v2, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    const-wide/32 v2, 0xffff

    cmp-long v0, v2, v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_5
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 170
    return-void
.end method

.method public getCompressorname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->compressorname:Ljava/lang/String;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "byteBuffer"

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 184
    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 185
    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 186
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    aget-wide v0, v0, v2

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 187
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 188
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 190
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 191
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 193
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont1616(Ljava/nio/ByteBuffer;D)V

    .line 194
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getVertresolution()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont1616(Ljava/nio/ByteBuffer;D)V

    .line 197
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 198
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getFrameCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 199
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 200
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 201
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    .line 202
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 204
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getDepth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 207
    const v0, 0xffff

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 211
    return-void
.end method

.method protected getContentSize()J
    .locals 6

    .prologue
    .line 174
    const-wide/16 v0, 0x4e

    .line 175
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 176
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 178
    :cond_0
    return-wide v1
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->height:I

    return v0
.end method

.method public getHorizresolution()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D

    return-wide v0
.end method

.method public getVertresolution()D
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->width:I

    return v0
.end method

.method public setCompressorname(Ljava/lang/String;)V
    .locals 0
    .parameter "compressorname"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->compressorname:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setDepth(I)V
    .locals 0
    .parameter "depth"

    .prologue
    .line 131
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I

    .line 132
    return-void
.end method

.method public setFrameCount(I)V
    .locals 0
    .parameter "frameCount"

    .prologue
    .line 127
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I

    .line 128
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 115
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->height:I

    .line 116
    return-void
.end method

.method public setHorizresolution(D)V
    .locals 0
    .parameter "horizresolution"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D

    .line 120
    return-void
.end method

.method public setVertresolution(D)V
    .locals 0
    .parameter "vertresolution"

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D

    .line 124
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 111
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->width:I

    .line 112
    return-void
.end method
