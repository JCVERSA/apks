.class public final Le15;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb15;


# direct methods
.method public constructor <init>(Lb15;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le15;->a:Lb15;

    return-void
.end method


# virtual methods
.method public final a()Lb15;
    .locals 0

    iget-object p0, p0, Le15;->a:Lb15;

    return-object p0
.end method
