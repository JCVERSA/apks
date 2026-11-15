.class public final Lg82;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld82;


# direct methods
.method public constructor <init>(Ld82;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg82;->a:Ld82;

    return-void
.end method


# virtual methods
.method public final a()Ld82;
    .locals 0

    iget-object p0, p0, Lg82;->a:Ld82;

    return-object p0
.end method
