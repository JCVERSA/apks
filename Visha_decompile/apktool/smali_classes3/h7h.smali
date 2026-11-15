.class public final synthetic Lh7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Li7h;


# direct methods
.method public synthetic constructor <init>(Li7h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7h;->a:Li7h;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lh7h;->a:Li7h;

    iget-object p0, p0, Li7h;->a:Lqef;

    check-cast p1, Ljava/lang/Exception;

    const-string v0, "AppSetIdInfoSignal"

    invoke-virtual {p0, p1, v0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p0, Lj7h;

    const/4 p1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lj7h;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method
