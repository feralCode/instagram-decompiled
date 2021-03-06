.class public Lorg/apache/commons/lang3/BooleanUtils;
.super Ljava/lang/Object;
.source "BooleanUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static varargs and([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .parameter "array"

    .prologue
    .line 925
    if-nez p0, :cond_0

    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 929
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    .line 933
    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->and([Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array must not contain any null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs and([Z)Z
    .locals 4
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 891
    if-nez p0, :cond_0

    .line 892
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 895
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-boolean v3, p0, v1

    .line 898
    if-nez v3, :cond_2

    .line 902
    :goto_1
    return v0

    .line 897
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isFalse(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "bool"

    .prologue
    .line 123
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNotFalse(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "bool"

    .prologue
    .line 141
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isFalse(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotTrue(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "bool"

    .prologue
    .line 105
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "bool"

    .prologue
    .line 87
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static negate(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .parameter "bool"

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static varargs or([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .parameter "array"

    .prologue
    .line 994
    if-nez p0, :cond_0

    .line 995
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 998
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    .line 1002
    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->or([Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array must not contain any null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs or([Z)Z
    .locals 4
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 959
    if-nez p0, :cond_0

    .line 960
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 963
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-boolean v3, p0, v1

    .line 966
    if-eqz v3, :cond_3

    .line 967
    const/4 v0, 0x1

    .line 970
    :cond_2
    return v0

    .line 965
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toBoolean(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 199
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toBoolean(III)Z
    .locals 2
    .parameter "value"
    .parameter "trueValue"
    .parameter "falseValue"

    .prologue
    .line 262
    if-ne p0, p1, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    .line 265
    :cond_0
    if-ne p0, p2, :cond_1

    .line 266
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "bool"

    .prologue
    .line 159
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toBoolean(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 3
    .parameter "value"
    .parameter "trueValue"
    .parameter "falseValue"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 290
    if-nez p0, :cond_2

    .line 291
    if-nez p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    if-nez p2, :cond_3

    move v0, v1

    .line 295
    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 300
    goto :goto_0

    .line 303
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 695
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "str"
    .parameter "trueString"
    .parameter "falseString"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 713
    if-ne p0, p1, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v0

    .line 715
    :cond_1
    if-ne p0, p2, :cond_2

    move v0, v1

    .line 716
    goto :goto_0

    .line 717
    :cond_2
    if-eqz p0, :cond_3

    .line 718
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 720
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 721
    goto :goto_0

    .line 725
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanDefaultIfNull(Ljava/lang/Boolean;Z)Z
    .locals 0
    .parameter "bool"
    .parameter "valueIfNull"

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 179
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0
.end method

.method public static toBooleanObject(I)Ljava/lang/Boolean;
    .locals 1
    .parameter "value"

    .prologue
    .line 217
    if-nez p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static toBooleanObject(IIII)Ljava/lang/Boolean;
    .locals 2
    .parameter "value"
    .parameter "trueValue"
    .parameter "falseValue"
    .parameter "nullValue"

    .prologue
    .line 325
    if-ne p0, p1, :cond_0

    .line 326
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 332
    :goto_0
    return-object v0

    .line 328
    :cond_0
    if-ne p0, p2, :cond_1

    .line 329
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 331
    :cond_1
    if-ne p0, p3, :cond_2

    .line 332
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .parameter "value"

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .parameter "value"
    .parameter "trueValue"
    .parameter "falseValue"
    .parameter "nullValue"

    .prologue
    const/4 v0, 0x0

    .line 357
    if-nez p0, :cond_4

    .line 358
    if-nez p1, :cond_1

    .line 359
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    if-nez p2, :cond_2

    .line 362
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 364
    :cond_2
    if-eqz p3, :cond_0

    .line 375
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 369
    :cond_5
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 370
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 371
    :cond_6
    invoke-virtual {p0, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method public static toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v3, 0x2

    const/16 v6, 0x66

    const/16 v5, 0x46

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 545
    const-string v0, "true"

    if-ne p0, v0, :cond_0

    .line 546
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 623
    :goto_0
    return-object v0

    .line 548
    :cond_0
    if-nez p0, :cond_1

    .line 549
    const/4 v0, 0x0

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 623
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 553
    :pswitch_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 554
    const/16 v1, 0x79

    if-eq v0, v1, :cond_3

    const/16 v1, 0x59

    if-eq v0, v1, :cond_3

    const/16 v1, 0x74

    if-eq v0, v1, :cond_3

    const/16 v1, 0x54

    if-ne v0, v1, :cond_4

    .line 556
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 558
    :cond_4
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_5

    if-eq v0, v6, :cond_5

    if-ne v0, v5, :cond_2

    .line 560
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 565
    :pswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 566
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 567
    const/16 v2, 0x6f

    if-eq v0, v2, :cond_6

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_8

    :cond_6
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_7

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_8

    .line 569
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 571
    :cond_8
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_9

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    :cond_9
    const/16 v0, 0x6f

    if-eq v1, v0, :cond_a

    const/16 v0, 0x4f

    if-ne v1, v0, :cond_2

    .line 573
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 578
    :pswitch_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 579
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 580
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 581
    const/16 v3, 0x79

    if-eq v0, v3, :cond_b

    const/16 v3, 0x59

    if-ne v0, v3, :cond_e

    :cond_b
    const/16 v3, 0x65

    if-eq v1, v3, :cond_c

    const/16 v3, 0x45

    if-ne v1, v3, :cond_e

    :cond_c
    const/16 v3, 0x73

    if-eq v2, v3, :cond_d

    const/16 v3, 0x53

    if-ne v2, v3, :cond_e

    .line 584
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 586
    :cond_e
    const/16 v3, 0x6f

    if-eq v0, v3, :cond_f

    const/16 v3, 0x4f

    if-ne v0, v3, :cond_2

    :cond_f
    if-eq v1, v6, :cond_10

    if-ne v1, v5, :cond_2

    :cond_10
    if-eq v2, v6, :cond_11

    if-ne v2, v5, :cond_2

    .line 589
    :cond_11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 594
    :pswitch_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 595
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 596
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 597
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 598
    const/16 v4, 0x74

    if-eq v0, v4, :cond_12

    const/16 v4, 0x54

    if-ne v0, v4, :cond_2

    :cond_12
    const/16 v0, 0x72

    if-eq v1, v0, :cond_13

    const/16 v0, 0x52

    if-ne v1, v0, :cond_2

    :cond_13
    const/16 v0, 0x75

    if-eq v2, v0, :cond_14

    const/16 v0, 0x55

    if-ne v2, v0, :cond_2

    :cond_14
    const/16 v0, 0x65

    if-eq v3, v0, :cond_15

    const/16 v0, 0x45

    if-ne v3, v0, :cond_2

    .line 602
    :cond_15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 607
    :pswitch_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 608
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 609
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 610
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 611
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 612
    if-eq v0, v6, :cond_16

    if-ne v0, v5, :cond_2

    :cond_16
    const/16 v0, 0x61

    if-eq v1, v0, :cond_17

    const/16 v0, 0x41

    if-ne v1, v0, :cond_2

    :cond_17
    const/16 v0, 0x6c

    if-eq v2, v0, :cond_18

    const/16 v0, 0x4c

    if-ne v2, v0, :cond_2

    :cond_18
    const/16 v0, 0x73

    if-eq v3, v0, :cond_19

    const/16 v0, 0x53

    if-ne v3, v0, :cond_2

    :cond_19
    const/16 v0, 0x65

    if-eq v4, v0, :cond_1a

    const/16 v0, 0x45

    if-ne v4, v0, :cond_2

    .line 617
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static toBooleanObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "str"
    .parameter "trueString"
    .parameter "falseString"
    .parameter "nullString"

    .prologue
    const/4 v0, 0x0

    .line 646
    if-nez p0, :cond_4

    .line 647
    if-nez p1, :cond_1

    .line 648
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 661
    :cond_0
    :goto_0
    return-object v0

    .line 650
    :cond_1
    if-nez p2, :cond_2

    .line 651
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 653
    :cond_2
    if-eqz p3, :cond_0

    .line 664
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 657
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 658
    :cond_5
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 659
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 660
    :cond_6
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method public static toInteger(Ljava/lang/Boolean;III)I
    .locals 1
    .parameter "bool"
    .parameter "trueValue"
    .parameter "falseValue"
    .parameter "nullValue"

    .prologue
    .line 466
    if-nez p0, :cond_0

    .line 469
    .end local p1
    .end local p3
    :goto_0
    return p3

    .restart local p1
    .restart local p3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p1
    :goto_1
    move p3, p1

    goto :goto_0

    .restart local p1
    :cond_1
    move p1, p2

    goto :goto_1
.end method

.method public static toInteger(Z)I
    .locals 1
    .parameter "bool"

    .prologue
    .line 393
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toInteger(ZII)I
    .locals 0
    .parameter "bool"
    .parameter "trueValue"
    .parameter "falseValue"

    .prologue
    .line 447
    if-eqz p0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 1
    .parameter "bool"

    .prologue
    .line 427
    if-nez p0, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .parameter "bool"
    .parameter "trueValue"
    .parameter "falseValue"
    .parameter "nullValue"

    .prologue
    .line 505
    if-nez p0, :cond_0

    .line 508
    .end local p1
    .end local p3
    :goto_0
    return-object p3

    .restart local p1
    .restart local p3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p1
    :goto_1
    move-object p3, p1

    goto :goto_0

    .restart local p1
    :cond_1
    move-object p1, p2

    goto :goto_1
.end method

.method public static toIntegerObject(Z)Ljava/lang/Integer;
    .locals 1
    .parameter "bool"

    .prologue
    .line 409
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static toIntegerObject(ZLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "bool"
    .parameter "trueValue"
    .parameter "falseValue"

    .prologue
    .line 486
    if-eqz p0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bool"
    .parameter "trueString"
    .parameter "falseString"
    .parameter "nullString"

    .prologue
    .line 797
    if-nez p0, :cond_0

    .line 800
    .end local p1
    .end local p3
    :goto_0
    return-object p3

    .restart local p1
    .restart local p3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p1
    :goto_1
    move-object p3, p1

    goto :goto_0

    .restart local p1
    :cond_1
    move-object p1, p2

    goto :goto_1
.end method

.method public static toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "bool"
    .parameter "trueString"
    .parameter "falseString"

    .prologue
    .line 867
    if-eqz p0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public static toStringOnOff(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .parameter "bool"

    .prologue
    .line 761
    const-string v0, "on"

    const-string v1, "off"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringOnOff(Z)Ljava/lang/String;
    .locals 2
    .parameter "bool"

    .prologue
    .line 834
    const-string v0, "on"

    const-string v1, "off"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .parameter "bool"

    .prologue
    .line 744
    const-string v0, "true"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Z)Ljava/lang/String;
    .locals 2
    .parameter "bool"

    .prologue
    .line 818
    const-string v0, "true"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .parameter "bool"

    .prologue
    .line 778
    const-string v0, "yes"

    const-string v1, "no"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Z)Ljava/lang/String;
    .locals 2
    .parameter "bool"

    .prologue
    .line 850
    const-string v0, "yes"

    const-string v1, "no"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs xor([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .parameter "array"

    .prologue
    .line 1068
    if-nez p0, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1072
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    .line 1076
    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->xor([Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array must not contain any null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs xor([Z)Z
    .locals 6
    .parameter "array"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1027
    if-nez p0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1031
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_1
    array-length v4, p0

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-boolean v5, p0, v3

    .line 1039
    if-eqz v5, :cond_2

    .line 1040
    if-ge v0, v1, :cond_4

    .line 1041
    add-int/lit8 v0, v0, 0x1

    .line 1036
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1049
    :cond_3
    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_1
    move v2, v0

    :cond_4
    return v2

    :cond_5
    move v0, v2

    goto :goto_1
.end method
