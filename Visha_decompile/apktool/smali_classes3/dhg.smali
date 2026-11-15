.class public final synthetic Ldhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkf;


# instance fields
.field public final synthetic b:Ljhg;

.field public final synthetic c:Lejf;

.field public final synthetic d:Ldff;


# direct methods
.method public synthetic constructor <init>(Ljhg;Lejf;Ldff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldhg;->b:Ljhg;

    iput-object p2, p0, Ldhg;->c:Lejf;

    iput-object p3, p0, Ldhg;->d:Ldff;

    return-void
.end method


# virtual methods
.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Ldhg;->b:Ljhg;

    iget-object v1, p0, Ldhg;->c:Lejf;

    iget-object v2, p0, Ldhg;->d:Ldff;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Ljhg;->f(Ljhg;Lejf;Ldff;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
