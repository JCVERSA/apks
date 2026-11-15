.class public final synthetic Llm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;


# instance fields
.field public final synthetic a:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llm6;->a:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    return-void
.end method


# virtual methods
.method public final onCloudComplete(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Llm6;->a:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    invoke-static {p0, p1, p2}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;ILjava/lang/String;)V

    return-void
.end method
