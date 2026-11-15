package com.cloud.tmc.integration.utils;

import android.content.Context;
import android.content.Intent;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniutils.util.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.mvel2.ast.ASTNode;

public class LocationUtils {
    private static ArrayList<AddressCallback> addressCallbacks;
    private static LocationUtils uniqueInstance;
    private AddressCallback addressCallback;
    private Location location;
    private LocationManager locationManager;
    private Context mContext;
    int times = 0;
    private LocationListener locationListener = new LocationListener() {
        @Override
        public void onLocationChanged(Location location) {
            LocationUtils.this.location = location;
            LocationUtils.this.showLocation();
        }

        @Override
        public void onProviderDisabled(String str) {
        }

        @Override
        public void onProviderEnabled(String str) {
        }

        @Override
        public void onStatusChanged(String str, int i10, Bundle bundle) {
        }
    };

    public interface AddressCallback {
        void onGetAddress(Address address);

        void onGetCountryCode(String str);

        void onGetLocation(double d10, double d11);
    }

    private LocationUtils(Context context) {
        this.mContext = context;
        getLocation();
    }

    private void getAddress(double d10, double d11) {
        try {
            List<Address> fromLocation = new Geocoder(this.mContext, Locale.getDefault()).getFromLocation(d10, d11, 1);
            if (fromLocation != null) {
                Address address = fromLocation.get(0);
                address.getCountryName();
                address.getCountryCode();
                address.getAdminArea();
                address.getLocality();
                address.getSubLocality();
                address.getFeatureName();
                AddressCallback addressCallback = this.addressCallback;
                if (addressCallback != null) {
                    addressCallback.onGetAddress(address);
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static synchronized LocationUtils getInstance(Context context) {
        try {
            if (uniqueInstance == null) {
                addressCallbacks = new ArrayList<>();
                uniqueInstance = new LocationUtils(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return uniqueInstance;
    }

    private void getLngAndLatWithNetwork() {
        if (androidx.core.content.b.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            return;
        }
        try {
            if (this.locationManager == null) {
                this.locationManager = (LocationManager) this.mContext.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
            }
            if (this.locationManager.getProviders(true).contains("network")) {
                this.locationManager.requestLocationUpdates("network", 5000L, 10.0f, this.locationListener);
                this.location = this.locationManager.getLastKnownLocation("network");
            }
        } catch (Exception e10) {
            TmcLogger.e("LocationUtils", "Failed to request network location！", e10);
        }
        showLocation();
    }

    private void getLocation() {
        this.locationManager = (LocationManager) this.mContext.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        if (androidx.core.content.b.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            return;
        }
        List<String> providers = this.locationManager.getProviders(true);
        String str = "gps";
        if (!providers.contains("gps")) {
            str = "network";
            if (!providers.contains("network")) {
                clearAddressCallback();
                try {
                    Intent intent = new Intent();
                    intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
                    this.mContext.startActivity(intent);
                    return;
                } catch (Exception e10) {
                    TmcLogger.e(e10.getMessage());
                    return;
                }
            }
        }
        String str2 = str;
        Location lastKnownLocation = this.locationManager.getLastKnownLocation(str2);
        this.location = lastKnownLocation;
        if (lastKnownLocation != null) {
            showLocation();
        } else {
            getLngAndLatWithNetwork();
        }
        this.locationManager.requestLocationUpdates(str2, 5000L, 10.0f, this.locationListener);
    }

    public static boolean isGpsEnabled() {
        return ((LocationManager) Utils.getApp().getSystemService(RequestParameters.SUBRESOURCE_LOCATION)).isProviderEnabled("gps");
    }

    public static boolean isLocationEnabled() {
        LocationManager locationManager = (LocationManager) Utils.getApp().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        return locationManager.isProviderEnabled("network") || locationManager.isProviderEnabled("gps");
    }

    public static void openGpsSettings() {
        Utils.getApp().startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS").addFlags(ASTNode.DEOP));
    }

    private void removeLocationUpdatesListener() {
        LocationManager locationManager = this.locationManager;
        if (locationManager != null) {
            uniqueInstance = null;
            locationManager.removeUpdates(this.locationListener);
            this.location = null;
            this.addressCallback = null;
        }
    }

    public void showLocation() {
        Location location = this.location;
        if (location != null) {
            double latitude = location.getLatitude();
            double longitude = this.location.getLongitude();
            AddressCallback addressCallback = this.addressCallback;
            if (addressCallback != null) {
                addressCallback.onGetLocation(latitude, longitude);
                return;
            }
            return;
        }
        int i10 = this.times + 1;
        this.times = i10;
        if (i10 <= 3) {
            getLocation();
            return;
        }
        this.times = 0;
        String simCountryIso = ((TelephonyManager) this.mContext.getApplicationContext().getSystemService("phone")).getSimCountryIso();
        if (simCountryIso.isEmpty()) {
            simCountryIso = Locale.getDefault().getCountry().toUpperCase();
        }
        AddressCallback addressCallback2 = this.addressCallback;
        if (addressCallback2 != null) {
            addressCallback2.onGetCountryCode(simCountryIso);
        }
    }

    public void addAddressCallback(AddressCallback addressCallback) {
        addressCallbacks.add(addressCallback);
        showLocation();
    }

    public void clearAddressCallback() {
        try {
            removeLocationUpdatesListener();
            ArrayList<AddressCallback> arrayList = addressCallbacks;
            if (arrayList != null) {
                arrayList.clear();
            }
        } catch (NullPointerException e10) {
            TmcLogger.e(e10.getMessage());
        }
    }

    public AddressCallback getAddressCallback() {
        return this.addressCallback;
    }

    public void removeAddressCallback(AddressCallback addressCallback) {
        addressCallbacks.remove(addressCallback);
    }

    public void setAddressCallback(AddressCallback addressCallback) {
        this.addressCallback = addressCallback;
        showLocation();
    }
}
