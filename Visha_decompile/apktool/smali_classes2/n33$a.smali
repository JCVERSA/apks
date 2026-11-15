.class public Ln33$a;
.super Liu5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln33;->f(Liu5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Liu5;

.field public final synthetic e:Ln33;


# direct methods
.method public constructor <init>(Ln33;Liu5;)V
    .locals 0

    iput-object p1, p0, Ln33$a;->e:Ln33;

    iput-object p2, p0, Ln33$a;->d:Liu5;

    invoke-direct {p0}, Liu5;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lbt5;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ln33$a;->d(Lbt5;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public d(Lbt5;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Ln33$a;->d:Liu5;

    invoke-virtual {p0, p1}, Liu5;->a(Lbt5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const p1, 0x40233333    # 2.55f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
