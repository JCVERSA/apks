.class public final Lfda;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbu2;


# direct methods
.method public constructor <init>(Lbu2;)V
    .locals 1

    const-string v0, "typefaceProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfda;->a:Lbu2;

    return-void
.end method


# virtual methods
.method public final a()Lbu2;
    .locals 0

    iget-object p0, p0, Lfda;->a:Lbu2;

    return-object p0
.end method
