.class public Lyld$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyld$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyld$c;


# direct methods
.method public constructor <init>(Lyld$c;)V
    .locals 0

    iput-object p1, p0, Lyld$c$a;->a:Lyld$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(JJLjava/lang/String;)V
    .locals 0

    .line 4
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lyld$c$a;->a:Lyld$c;

    iget-object p0, p0, Lyld$c;->d:Lyld$e;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lyld$e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
