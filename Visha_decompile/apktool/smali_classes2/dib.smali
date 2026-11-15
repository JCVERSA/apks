.class public final synthetic Ldib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8a$a;


# instance fields
.field public final synthetic a:Lkib;

.field public final synthetic b:La9b;


# direct methods
.method public synthetic constructor <init>(Lkib;La9b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldib;->a:Lkib;

    iput-object p2, p0, Ldib;->b:La9b;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldib;->a:Lkib;

    iget-object p0, p0, Ldib;->b:La9b;

    invoke-static {v0, p0}, Lkib;->d(Lkib;La9b;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
