.class Lcom/instagram/android/fragment/DeveloperOptionsFragment$1;
.super Ljava/lang/Object;
.source "DeveloperOptionsFragment.java"

# interfaces
.implements Lcom/instagram/android/fragment/ActionBarConfigurer;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/DeveloperOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/DeveloperOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/instagram/android/fragment/DeveloperOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/DeveloperOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/fragment/DeveloperOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/DeveloperOptionsFragment;

    sget v1, Lcom/facebook/k;->dev_options:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/DeveloperOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public showBackButton()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/android/fragment/DeveloperOptionsFragment$1;->this$0:Lcom/instagram/android/fragment/DeveloperOptionsFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/DeveloperOptionsFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->f()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRefreshButton()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
