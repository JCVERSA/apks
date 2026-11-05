.class public final Lo/xn7;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xn7$a;,
        Lo/xn7$d;,
        Lo/xn7$b;,
        Lo/xn7$c;
    }
.end annotation


# static fields
.field public static final b:Lo/xn7$a;


# instance fields
.field public final a:Lo/xn7$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/xn7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/xn7$a;-><init>(Lo/pg1;)V

    sput-object v0, Lo/xn7;->b:Lo/xn7$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Lo/xn7$c;

    invoke-direct {v0, p1}, Lo/xn7$c;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/xn7$b;

    invoke-direct {v0, p1}, Lo/xn7$b;-><init>(Landroid/app/Activity;)V

    :goto_0
    iput-object v0, p0, Lo/xn7;->a:Lo/xn7$b;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Lo/pg1;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/xn7;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic a(Lo/xn7;)V
    .locals 0

    invoke-virtual {p0}, Lo/xn7;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lo/xn7;->a:Lo/xn7$b;

    invoke-virtual {v0}, Lo/xn7$b;->e()V

    return-void
.end method

.method public final c(Lo/xn7$d;)V
    .locals 1

    const-string v0, "condition"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/xn7;->a:Lo/xn7$b;

    invoke-virtual {v0, p1}, Lo/xn7$b;->f(Lo/xn7$d;)V

    return-void
.end method
