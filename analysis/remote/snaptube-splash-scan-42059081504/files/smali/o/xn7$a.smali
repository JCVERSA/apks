.class public final Lo/xn7$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xn7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/pg1;)V
    .locals 0

    invoke-direct {p0}, Lo/xn7$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lo/xn7;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/xn7;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/xn7;-><init>(Landroid/app/Activity;Lo/pg1;)V

    invoke-static {v0}, Lo/xn7;->a(Lo/xn7;)V

    return-object v0
.end method
