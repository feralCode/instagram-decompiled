.class public Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpecFactory;
.super Ljava/lang/Object;
.source "BrowserCompatSpecFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/cookie/CookieSpec;
    .locals 2
    .parameter "params"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 58
    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 64
    :goto_0
    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    .line 66
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpec;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
