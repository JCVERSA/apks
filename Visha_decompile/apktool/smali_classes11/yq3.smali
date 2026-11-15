.class public final synthetic Lyq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyq3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyq3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
