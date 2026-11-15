.class public final Lcom/transsion/mediationads/manager/MediaTionADMangerCore$c;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lhk1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mediationads/manager/MediaTionADMangerCore;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;


# direct methods
.method public constructor <init>(Lhk1$b;Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$c;->b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    invoke-direct {p0, p1}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/d$c;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$c;->b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    invoke-static {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->e(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Coroutine Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
