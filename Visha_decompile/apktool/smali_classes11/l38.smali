.class public final synthetic Ll38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/adapter/PlayListAdapter;

.field public final synthetic c:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/adapter/PlayListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll38;->b:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    iput-object p2, p0, Ll38;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Ll38;->b:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    iget-object p0, p0, Ll38;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->z(Lcom/transsion/playercommon/adapter/PlayListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
