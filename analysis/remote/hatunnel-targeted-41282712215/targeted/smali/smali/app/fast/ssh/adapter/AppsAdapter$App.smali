.class public Lapp/fast/ssh/adapter/AppsAdapter$App;
.super Ljava/lang/Object;
.source "AppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/adapter/AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "App"
.end annotation


# instance fields
.field public final appIcon:Landroid/graphics/drawable/Drawable;

.field public final appName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/adapter/AppsAdapter$App;->appIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lapp/fast/ssh/adapter/AppsAdapter$App;->appName:Ljava/lang/String;

    iput-object p3, p0, Lapp/fast/ssh/adapter/AppsAdapter$App;->packageName:Ljava/lang/String;

    return-void
.end method
