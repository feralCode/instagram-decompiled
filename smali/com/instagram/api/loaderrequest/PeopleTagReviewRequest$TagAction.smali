.class public final enum Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;
.super Ljava/lang/Enum;
.source "PeopleTagReviewRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

.field public static final enum KEEP_TAGS:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

.field public static final enum REMOVE_TAGS:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    const-string v1, "KEEP_TAGS"

    invoke-direct {v0, v1, v2}, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->KEEP_TAGS:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    new-instance v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    const-string v1, "REMOVE_TAGS"

    invoke-direct {v0, v1, v3}, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->REMOVE_TAGS:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    sget-object v1, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->KEEP_TAGS:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->REMOVE_TAGS:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->$VALUES:[Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    return-object v0
.end method

.method public static values()[Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->$VALUES:[Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    invoke-virtual {v0}, [Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    return-object v0
.end method
