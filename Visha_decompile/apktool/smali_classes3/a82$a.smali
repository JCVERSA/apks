.class public La82$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La82$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La82;-><init>(La82$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La82;


# direct methods
.method public constructor <init>(La82;)V
    .locals 0

    iput-object p1, p0, La82$a;->a:La82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, La82$a;->a:La82;

    invoke-static {p0, p1}, La82;->d(La82;Ljava/lang/Throwable;)Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La82$a;->a:La82;

    invoke-static {p0, p1}, La82;->a(La82;Ljava/lang/Object;)Z

    return-void
.end method
