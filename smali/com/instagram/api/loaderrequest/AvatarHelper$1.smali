.class Lcom/instagram/api/loaderrequest/AvatarHelper$1;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/AvatarHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$1;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 142
    return-void
.end method
