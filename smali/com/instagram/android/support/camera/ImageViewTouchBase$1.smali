.class Lcom/instagram/android/support/camera/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/support/camera/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/instagram/android/support/camera/RotateBitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/instagram/android/support/camera/ImageViewTouchBase;Lcom/instagram/android/support/camera/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase$1;->this$0:Lcom/instagram/android/support/camera/ImageViewTouchBase;

    iput-object p2, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase$1;->val$bitmap:Lcom/instagram/android/support/camera/RotateBitmap;

    iput-boolean p3, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase$1;->this$0:Lcom/instagram/android/support/camera/ImageViewTouchBase;

    iget-object v1, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase$1;->val$bitmap:Lcom/instagram/android/support/camera/RotateBitmap;

    iget-boolean v2, p0, Lcom/instagram/android/support/camera/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/support/camera/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/instagram/android/support/camera/RotateBitmap;Z)V

    .line 164
    return-void
.end method
