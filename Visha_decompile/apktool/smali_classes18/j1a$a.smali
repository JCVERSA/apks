.class public final Lj1a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1a;->u0(Ljava/lang/CharSequence;)Lpc9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lj1a$a;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lhl5;

    iget-object p0, p0, Lj1a$a;->a:Ljava/lang/CharSequence;

    invoke-direct {v0, p0}, Lhl5;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
