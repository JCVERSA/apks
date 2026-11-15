.class public final synthetic Ltv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/content/SharedPreferences;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv3;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, Ltv3;->c:Ljava/lang/String;

    iput-boolean p3, p0, Ltv3;->d:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ltv3;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ltv3;->c:Ljava/lang/String;

    iget-boolean p0, p0, Ltv3;->d:Z

    invoke-static {v0, v1, p0}, Luv3;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
