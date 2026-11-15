.class public Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/palmsdk/auth/PalmAuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/transsion/palmsdk/data/PalmAuthRequest;

.field public final synthetic OooO0O0:Lcom/transsion/palmsdk/auth/PalmAuthService;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/auth/PalmAuthService;Lcom/transsion/palmsdk/data/PalmAuthRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0O0;->OooO0O0:Lcom/transsion/palmsdk/auth/PalmAuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0O0;->OooO0O0:Lcom/transsion/palmsdk/auth/PalmAuthService;

    iget-object v0, v0, Lcom/transsion/palmsdk/auth/PalmAuthService;->b:Landroid/content/Context;

    invoke-static {v0}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v0, p0}, Law7;->d(Lcom/transsion/palmsdk/data/PalmAuthRequest;)V

    return-void
.end method
