.class Lcom/instagram/android/feed/adapter/FeedAdapter$1;
.super Lcom/instagram/android/widget/SimpleAnimationListener;
.source "FeedAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$1;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/android/widget/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$1;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 782
    return-void
.end method
