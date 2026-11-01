.class public abstract Lo/xu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xu$a;
    }
.end annotation


# instance fields
.field public a:Lo/xu$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract n()V
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lo/xu;->a:Lo/xu$a;

    invoke-interface {v0, p0}, Lo/xu$a;->a(Lo/xu;)V

    return-void
.end method

.method public p(Lo/xu$a;)V
    .locals 0

    iput-object p1, p0, Lo/xu;->a:Lo/xu$a;

    return-void
.end method

.method public abstract q()V
.end method
