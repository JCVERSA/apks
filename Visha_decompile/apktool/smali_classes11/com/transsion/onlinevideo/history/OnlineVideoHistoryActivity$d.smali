.class public Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$d;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$d;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->L0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;Z)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$d;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    invoke-static {p2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->J0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)Z

    move-result p2

    const-string v0, "onlineHistory_is_hide_titbits"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$d;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->K0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->O0(Ljava/util/List;)V

    return-void
.end method
