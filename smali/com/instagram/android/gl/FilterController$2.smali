.class Lcom/instagram/android/gl/FilterController$2;
.super Ljava/lang/Object;
.source "FilterController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/gl/FilterController;


# direct methods
.method constructor <init>(Lcom/instagram/android/gl/FilterController;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/gl/FilterController$2;->this$0:Lcom/instagram/android/gl/FilterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/gl/FilterController$2;->this$0:Lcom/instagram/android/gl/FilterController;

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterController;->getFilterView()Lcom/instagram/android/gl/FilterGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/gl/FilterGLSurfaceView;->requestRender()V

    .line 49
    return-void
.end method
