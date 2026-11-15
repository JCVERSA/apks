.class public final synthetic Ljpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lkpb;

.field public final synthetic c:Lcom/transsion/playercommon/widgets/SortGroup;


# direct methods
.method public synthetic constructor <init>(Lkpb;Lcom/transsion/playercommon/widgets/SortGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljpb;->b:Lkpb;

    iput-object p2, p0, Ljpb;->c:Lcom/transsion/playercommon/widgets/SortGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ljpb;->b:Lkpb;

    iget-object p0, p0, Ljpb;->c:Lcom/transsion/playercommon/widgets/SortGroup;

    invoke-static {v0, p0, p1}, Lkpb;->a(Lkpb;Lcom/transsion/playercommon/widgets/SortGroup;Landroid/view/View;)V

    return-void
.end method
