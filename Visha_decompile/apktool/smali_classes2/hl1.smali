.class public Lhl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lhy0;

.field public final c:Lhy0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhy0;Lhy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl1;->a:Landroid/content/Context;

    iput-object p2, p0, Lhl1;->b:Lhy0;

    iput-object p3, p0, Lhl1;->c:Lhy0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lgl1;
    .locals 2

    iget-object v0, p0, Lhl1;->a:Landroid/content/Context;

    iget-object v1, p0, Lhl1;->b:Lhy0;

    iget-object p0, p0, Lhl1;->c:Lhy0;

    invoke-static {v0, v1, p0, p1}, Lgl1;->a(Landroid/content/Context;Lhy0;Lhy0;Ljava/lang/String;)Lgl1;

    move-result-object p0

    return-object p0
.end method
