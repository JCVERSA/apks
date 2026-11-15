.class public final Lcom/transsion/log/upload/SendUbtRunnable$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcs4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/log/upload/SendUbtRunnable$a$a;->b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/transsion/log/upload/SendUbtRunnable;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a$a;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a$a;->b:Lcom/transsion/log/upload/SendUbtRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a$a;->b:Lcom/transsion/log/upload/SendUbtRunnable;

    invoke-static {p0}, Lcom/transsion/log/upload/SendUbtRunnable;->access$getMSendLogCallback$p(Lcom/transsion/log/upload/SendUbtRunnable;)Lec9;

    return-void
.end method

.method public b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    sget-object p1, Lcom/transsion/log/upload/record/UploadRecordUtil;->a:Lcom/transsion/log/upload/record/UploadRecordUtil;

    sget-object v0, Lvdb;->a:Lvdb$a;

    invoke-virtual {v0}, Lvdb$a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/log/upload/record/UploadRecordUtil;->g(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a$a;->b:Lcom/transsion/log/upload/SendUbtRunnable;

    invoke-static {p0}, Lcom/transsion/log/upload/SendUbtRunnable;->access$getMSendLogCallback$p(Lcom/transsion/log/upload/SendUbtRunnable;)Lec9;

    return-void
.end method
