.class public final Lcom/transsion/push/service/JobIntentService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/push/service/JobIntentService$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/service/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:I

.field public final synthetic c:Lcom/transsion/push/service/JobIntentService;


# direct methods
.method public constructor <init>(Lcom/transsion/push/service/JobIntentService;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/service/JobIntentService$c;->c:Lcom/transsion/push/service/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/push/service/JobIntentService$c;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/transsion/push/service/JobIntentService$c;->b:I

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/service/JobIntentService$c;->c:Lcom/transsion/push/service/JobIntentService;

    iget p0, p0, Lcom/transsion/push/service/JobIntentService$c;->b:I

    invoke-virtual {v0, p0}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/transsion/push/service/JobIntentService$c;->a:Landroid/content/Intent;

    return-object p0
.end method
