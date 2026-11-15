.class public final Lxp3;
.super Led;
.source "SourceFile"

# interfaces
.implements Lwp3;


# instance fields
.field public final c:Lti8;


# direct methods
.method public constructor <init>(Lmd;Lti8;)V
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correspondingProperty"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Led;-><init>(Lmd;)V

    iput-object p2, p0, Lxp3;->c:Lti8;

    return-void
.end method
