.class public Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
.source "ObjectMapper.java"


# instance fields
.field protected final _appliesFor:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->_appliesFor:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 134
    return-void
.end method


# virtual methods
.method public buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 1
    .parameter "config"
    .parameter "baseType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;"
        }
    .end annotation

    .prologue
    .line 140
    .local p3, subtypes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 1
    .parameter "config"
    .parameter "baseType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, subtypes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useForType(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 4
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 160
    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper$2;->$SwitchMap$com$fasterxml$jackson$databind$ObjectMapper$DefaultTyping:[I

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->_appliesFor:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 175
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    :cond_0
    :goto_0
    return v1

    .line 162
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_1

    .line 167
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isConcrete()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0

    .line 169
    :goto_2
    :pswitch_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_2

    .line 172
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 175
    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
