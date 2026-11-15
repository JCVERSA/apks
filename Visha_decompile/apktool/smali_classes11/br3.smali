.class public final synthetic Lbr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbr3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->g(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
