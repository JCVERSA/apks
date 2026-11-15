.class public final Lqag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lw9g;


# direct methods
.method public constructor <init>(Lw9g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqag;->a:Lw9g;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqag;->a:Lw9g;

    invoke-virtual {p0}, Lw9g;->b()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
