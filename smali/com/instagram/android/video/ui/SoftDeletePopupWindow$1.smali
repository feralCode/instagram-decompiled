.class Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;
.super Ljava/lang/Object;
.source "SoftDeletePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

.field final synthetic val$deleteButton:Landroid/view/View;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    iput-object p2, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;->val$rect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;->val$deleteButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #setter for: Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mX:F
    invoke-static {v0, v1}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->access$002(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;F)F

    .line 36
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mY:F
    invoke-static {v0, v1}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->access$102(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;F)F

    .line 38
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;->val$rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    #getter for: Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mX:F
    invoke-static {v1}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->access$000(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;->this$0:Lcom/instagram/android/video/ui/SoftDeletePopupWindow;

    #getter for: Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->mY:F
    invoke-static {v2}, Lcom/instagram/android/video/ui/SoftDeletePopupWindow;->access$100(Lcom/instagram/android/video/ui/SoftDeletePopupWindow;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/instagram/android/video/ui/SoftDeletePopupWindow$1;->val$deleteButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
