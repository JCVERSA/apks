.class public final synthetic Lch9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch9;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    iput-wide p2, p0, Lch9;->b:J

    iput-object p4, p0, Lch9;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lch9;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    iget-wide v1, p0, Lch9;->b:J

    iget-object p0, p0, Lch9;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->x0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;JLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
