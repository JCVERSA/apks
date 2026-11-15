.class public final synthetic Lz28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/SortGroup$b;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz28;->a:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iput-boolean p2, p0, Lz28;->b:Z

    iput-boolean p3, p0, Lz28;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/playercommon/widgets/SortGroup;II)V
    .locals 6

    iget-object v0, p0, Lz28;->a:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget-boolean v1, p0, Lz28;->b:Z

    iget-boolean v2, p0, Lz28;->c:Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->Q(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZZLcom/transsion/playercommon/widgets/SortGroup;II)V

    return-void
.end method
