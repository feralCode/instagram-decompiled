.class Lcom/instagram/android/service/CustomObjectMapper$CommentDelegateMapper;
.super Lcom/instagram/android/service/DelegateValueMapper;
.source "CustomObjectMapper.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/service/CustomObjectMapper;


# direct methods
.method public constructor <init>(Lcom/instagram/android/service/CustomObjectMapper;Lcom/instagram/android/service/CustomObjectMapper;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter "mapper"
    .parameter "clazz"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/instagram/android/service/CustomObjectMapper$CommentDelegateMapper;->this$0:Lcom/instagram/android/service/CustomObjectMapper;

    .line 147
    invoke-direct {p0, p3, p2}, Lcom/instagram/android/service/DelegateValueMapper;-><init>(Ljava/lang/Class;Lcom/instagram/android/service/CustomObjectMapper;)V

    .line 148
    return-void
.end method


# virtual methods
.method public createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "ctxt"
    .parameter "delegate"

    .prologue
    .line 153
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 154
    .end local p2
    invoke-virtual {p0}, Lcom/instagram/android/service/CustomObjectMapper$CommentDelegateMapper;->getMapper()Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/instagram/android/model/Comment;->fromJsonNode(Lcom/instagram/android/service/CustomObjectMapper;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/model/Comment;

    move-result-object v0

    return-object v0
.end method
