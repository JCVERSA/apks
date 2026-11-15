.class public final Ljga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llx7;


# instance fields
.field public final c:Llx7;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llx7;Ljava/lang/String;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljga;->c:Llx7;

    iput-object p2, p0, Ljga;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ljga;->c:Llx7;

    iget-object p0, p0, Ljga;->d:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Llx7;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method
