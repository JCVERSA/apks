.class public final synthetic Lir3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lir3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lir3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;->d(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
