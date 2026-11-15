.class public final Lcom/transsion/cloud/fragment/CloudFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudFragment;->cloudDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$a;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/cloud/fragment/CloudFragment;Z)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment$a;->b(Lcom/transsion/cloud/fragment/CloudFragment;Z)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/transsion/cloud/fragment/CloudFragment;Z)Lzfb;
    .locals 26

    new-instance v0, Lcom/transsion/dbdata/beans/FileHandlerData;

    new-instance v15, Lcom/transsion/dbdata/beans/VideoCloudData;

    move-object v1, v15

    const v23, 0xfffff

    const/16 v24, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v1 .. v24}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {p0 .. p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    move/from16 v3, p1

    move-object/from16 v4, v25

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/transsion/dbdata/beans/FileHandlerData;-><init>(ZILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    const/16 v2, 0x46d

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x46b

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    sget-object p1, Laz5;->a:Laz5$a;

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$a;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Laz5$a;->B(I)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result p1

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    sget-object p1, La41;->a:La41;

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$a;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getApplicationContext(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, La41;->c(Landroid/content/Context;)Lxy0;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$a;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$a;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    new-instance v0, Lg21;

    invoke-direct {v0, p0}, Lg21;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-interface {p1, p2, v0}, Lxy0;->k(Ljava/util/List;Le74;)V

    return-void
.end method
