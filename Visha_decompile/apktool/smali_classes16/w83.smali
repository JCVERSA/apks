.class public final synthetic Lw83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw83;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lw83;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->a(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
