.class Lcom/instagram/android/model/serialization/PendingMediaDeserializer$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "PendingMediaDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/people/model/PeopleTag;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/model/serialization/PendingMediaDeserializer;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/serialization/PendingMediaDeserializer;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/instagram/android/model/serialization/PendingMediaDeserializer$1;->this$0:Lcom/instagram/android/model/serialization/PendingMediaDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
