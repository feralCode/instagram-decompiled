.class final Lcom/a/a/b/ce;
.super Lcom/a/a/b/cd;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/a/a/b/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/cd",
        "<TK;TV;>;",
        "Lcom/a/a/b/bk",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field d:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field e:Lcom/a/a/b/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/a/a/b/bk;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1627
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/b/cd;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/a/a/b/bk;)V

    .line 1632
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ce;->d:Lcom/a/a/b/bk;

    .line 1645
    invoke-static {}, Lcom/a/a/b/ah;->h()Lcom/a/a/b/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/ce;->e:Lcom/a/a/b/bk;

    .line 1628
    return-void
.end method


# virtual methods
.method public c(Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/a/a/b/ce;->d:Lcom/a/a/b/bk;

    .line 1643
    return-void
.end method

.method public d(Lcom/a/a/b/bk;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/a/a/b/ce;->e:Lcom/a/a/b/bk;

    .line 1656
    return-void
.end method

.method public h()Lcom/a/a/b/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/a/a/b/ce;->d:Lcom/a/a/b/bk;

    return-object v0
.end method

.method public i()Lcom/a/a/b/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/bk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/a/a/b/ce;->e:Lcom/a/a/b/bk;

    return-object v0
.end method
