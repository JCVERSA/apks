.class public LOooO0OO/OooO0O0$OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO0OO/OooO0O0;->c(Lcom/transsion/palmsdk/PalmID$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/transsion/palmsdk/PalmID$a;

.field public final synthetic OooO0O0:LOooO0OO/OooO0O0;


# direct methods
.method public constructor <init>(LOooO0OO/OooO0O0;Lcom/transsion/palmsdk/PalmID$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOooO0OO/OooO0O0$OooO0O0;->OooO0O0:LOooO0OO/OooO0O0;

    iput-object p2, p0, LOooO0OO/OooO0O0$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object v1, p0, LOooO0OO/OooO0O0$OooO0O0;->OooO0O0:LOooO0OO/OooO0O0;

    iget-object v1, v1, LOooO0OO/OooO0O0;->a:Landroid/content/Context;

    iget-object p0, p0, LOooO0OO/OooO0O0$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/palmsdk/account/XNManager;->k(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z

    return-void
.end method
