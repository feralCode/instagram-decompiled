.class Lcom/instagram/android/mediacache/IgAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "IgAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/mediacache/IgAsyncTask;


# direct methods
.method constructor <init>(Lcom/instagram/android/mediacache/IgAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    .local p0, this:Lcom/instagram/android/mediacache/IgAsyncTask$3;,"Lcom/instagram/android/mediacache/IgAsyncTask.3;"
    .local p2, x0:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgAsyncTask$3;->this$0:Lcom/instagram/android/mediacache/IgAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .prologue
    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/instagram/android/mediacache/IgAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/instagram/android/mediacache/IgAsyncTask$3;->this$0:Lcom/instagram/android/mediacache/IgAsyncTask;

    #calls: Lcom/instagram/android/mediacache/IgAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/instagram/android/mediacache/IgAsyncTask;->access$400(Lcom/instagram/android/mediacache/IgAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 261
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :catch_2
    move-exception v0

    .line 256
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgAsyncTask$3;->this$0:Lcom/instagram/android/mediacache/IgAsyncTask;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/mediacache/IgAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/instagram/android/mediacache/IgAsyncTask;->access$400(Lcom/instagram/android/mediacache/IgAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :catch_3
    move-exception v0

    .line 258
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
