.class final Lcom/a/a/b/ca;
.super Lcom/a/a/b/bg;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/ah",
        "<TK;TV;>.com/a/a/b/bg;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ah;


# direct methods
.method constructor <init>(Lcom/a/a/b/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 3761
    iput-object p1, p0, Lcom/a/a/b/ca;->a:Lcom/a/a/b/ah;

    invoke-direct {p0, p1}, Lcom/a/a/b/bg;-><init>(Lcom/a/a/b/ah;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3765
    invoke-virtual {p0}, Lcom/a/a/b/ca;->e()Lcom/a/a/b/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/ci;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
