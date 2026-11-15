.class public final synthetic Lcom/transsion/room/helper/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/room/helper/f;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/room/helper/f;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/room/helper/f;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/room/helper/f;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/room/helper/LocationPlaceHelper;->c(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
