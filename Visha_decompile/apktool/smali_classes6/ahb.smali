.class public final Lahb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lngb;


# direct methods
.method public constructor <init>(Lngb;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lahb;->a:Lngb;

    return-void
.end method


# virtual methods
.method public final a()Lngb;
    .locals 0

    iget-object p0, p0, Lahb;->a:Lngb;

    return-object p0
.end method
