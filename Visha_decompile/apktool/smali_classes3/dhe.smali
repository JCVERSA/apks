.class public final synthetic Ldhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqfg;


# instance fields
.field public final synthetic a:Lehe;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lehe;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldhe;->a:Lehe;

    iput-wide p2, p0, Ldhe;->b:J

    iput p4, p0, Ldhe;->c:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ldhe;->a:Lehe;

    iget-wide v1, p0, Ldhe;->b:J

    iget p0, p0, Ldhe;->c:I

    check-cast p1, Lqge;

    invoke-static {v0, v1, v2, p0, p1}, Lehe;->h(Lehe;JILqge;)V

    return-void
.end method
