.class public final synthetic Lcr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcr3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcr3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->b(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    return-void
.end method
