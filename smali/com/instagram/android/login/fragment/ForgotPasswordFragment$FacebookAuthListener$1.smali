.class Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener$1;
.super Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;
.source "ForgotPasswordFragment.java"


# instance fields
.field final synthetic this$1:Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;Landroid/os/Handler;Landroid/support/v4/app/p;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener$1;->this$1:Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;-><init>(Landroid/os/Handler;Landroid/support/v4/app/p;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onRequestFail(Lcom/instagram/api/ApiResponse;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/ApiResponse",
            "<",
            "Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, response:Lcom/instagram/api/ApiResponse;,"Lcom/instagram/api/ApiResponse<Lcom/instagram/android/login/request/FacebookVerifyAccessTokenRequest$FacebookVerifyAccessTokenModel;>;"
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener$1;->this$1:Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_forgot_password_facebook:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->onRequestFail(Lcom/instagram/api/ApiResponse;)V

    .line 127
    return-void
.end method

.method public onRequestStart()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener$1;->this$1:Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/ForgotPasswordFragment$FacebookAuthListener;->this$0:Lcom/instagram/android/login/fragment/ForgotPasswordFragment;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/g;->fragment_forgot_password_facebook:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/login/callback/FacebookRecoveryCallbacks;->onRequestStart()V

    .line 116
    return-void
.end method
