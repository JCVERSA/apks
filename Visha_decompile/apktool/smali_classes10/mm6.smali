.class public final Lmm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkv4;


# static fields
.field public static final a:Lmm6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmm6;

    invoke-direct {v0}, Lmm6;-><init>()V

    sput-object v0, Lmm6;->a:Lmm6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lmm6;->d()Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->o()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lmm6;->d()Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->k()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lmm6;->d()Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->n()V

    return-void
.end method

.method public final d()Lcom/transsion/mediationads/manager/MediaTionADMangerCore;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->d:Lcom/transsion/mediationads/manager/MediaTionADMangerCore$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$a;->a()Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    move-result-object p0

    return-object p0
.end method
