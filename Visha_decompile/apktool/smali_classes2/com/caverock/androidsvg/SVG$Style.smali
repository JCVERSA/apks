.class public Lcom/caverock/androidsvg/SVG$Style;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$Style$RenderQuality;,
        Lcom/caverock/androidsvg/SVG$Style$VectorEffect;,
        Lcom/caverock/androidsvg/SVG$Style$TextDirection;,
        Lcom/caverock/androidsvg/SVG$Style$TextDecoration;,
        Lcom/caverock/androidsvg/SVG$Style$TextAnchor;,
        Lcom/caverock/androidsvg/SVG$Style$FontStyle;,
        Lcom/caverock/androidsvg/SVG$Style$LineJoin;,
        Lcom/caverock/androidsvg/SVG$Style$LineCap;,
        Lcom/caverock/androidsvg/SVG$Style$FillRule;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/Boolean;

.field public C:Ljava/lang/Boolean;

.field public D:Lcom/caverock/androidsvg/SVG$m0;

.field public E:Ljava/lang/Float;

.field public F:Ljava/lang/String;

.field public G:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field public H:Ljava/lang/String;

.field public I:Lcom/caverock/androidsvg/SVG$m0;

.field public J:Ljava/lang/Float;

.field public K:Lcom/caverock/androidsvg/SVG$m0;

.field public L:Ljava/lang/Float;

.field public M:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field public N:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

.field public b:J

.field public c:Lcom/caverock/androidsvg/SVG$m0;

.field public d:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field public e:Ljava/lang/Float;

.field public f:Lcom/caverock/androidsvg/SVG$m0;

.field public g:Ljava/lang/Float;

.field public h:Lcom/caverock/androidsvg/SVG$o;

.field public i:Lcom/caverock/androidsvg/SVG$Style$LineCap;

.field public j:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

.field public k:Ljava/lang/Float;

.field public l:[Lcom/caverock/androidsvg/SVG$o;

.field public m:Lcom/caverock/androidsvg/SVG$o;

.field public n:Ljava/lang/Float;

.field public o:Lcom/caverock/androidsvg/SVG$f;

.field public p:Ljava/util/List;

.field public q:Lcom/caverock/androidsvg/SVG$o;

.field public r:Ljava/lang/Integer;

.field public s:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

.field public t:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public u:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field public v:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

.field public w:Ljava/lang/Boolean;

.field public x:Lcom/caverock/androidsvg/SVG$c;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->b:J

    return-void
.end method

.method public static a()Lcom/caverock/androidsvg/SVG$Style;
    .locals 8

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->b:J

    sget-object v1, Lcom/caverock/androidsvg/SVG$f;->c:Lcom/caverock/androidsvg/SVG$f;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$m0;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->d:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->e:Ljava/lang/Float;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->g:Ljava/lang/Float;

    new-instance v6, Lcom/caverock/androidsvg/SVG$o;

    invoke-direct {v6, v3}, Lcom/caverock/androidsvg/SVG$o;-><init>(F)V

    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->h:Lcom/caverock/androidsvg/SVG$o;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->j:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->k:Ljava/lang/Float;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->l:[Lcom/caverock/androidsvg/SVG$o;

    new-instance v3, Lcom/caverock/androidsvg/SVG$o;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/caverock/androidsvg/SVG$o;-><init>(F)V

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->m:Lcom/caverock/androidsvg/SVG$o;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->o:Lcom/caverock/androidsvg/SVG$f;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->p:Ljava/util/List;

    new-instance v3, Lcom/caverock/androidsvg/SVG$o;

    const/high16 v6, 0x41400000    # 12.0f

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v6, v7}, Lcom/caverock/androidsvg/SVG$o;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Lcom/caverock/androidsvg/SVG$o;

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$c;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/String;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->C:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->D:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Float;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/String;

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->I:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->J:Ljava/lang/Float;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->K:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->L:Ljava/lang/Float;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->M:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->N:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    return-object v0
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$c;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    sget-object v1, Lcom/caverock/androidsvg/SVG$f;->c:Lcom/caverock/androidsvg/SVG$f;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->D:Lcom/caverock/androidsvg/SVG$m0;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Float;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->I:Lcom/caverock/androidsvg/SVG$m0;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->J:Ljava/lang/Float;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->K:Lcom/caverock/androidsvg/SVG$m0;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->L:Ljava/lang/Float;

    sget-object p1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->M:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->l:[Lcom/caverock/androidsvg/SVG$o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Lcom/caverock/androidsvg/SVG$o;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, v0, Lcom/caverock/androidsvg/SVG$Style;->l:[Lcom/caverock/androidsvg/SVG$o;

    :cond_0
    return-object v0
.end method
