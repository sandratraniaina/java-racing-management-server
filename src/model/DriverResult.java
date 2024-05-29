package model;

import java.io.Serializable;

import annotation.Column;
import annotation.Table;

@Table("v_driver_global_ps_total_points")
public class DriverResult implements Serializable{
    @Column("rank")
    int rank;

    @Column("season_id")
    String seasonId;

    @Column("driver_id")
    String driverId;

    @Column("driver_name")
    String driverName;

    @Column("driver_category")
    String driverCategory;

    @Column("win_count")
    int winCount;

    @Column("total_points")
    int totalPoints;

    //Constructor
    public DriverResult() {}

    // Getters and setters
    public int getRank() {
        return rank;
    }
    public void setRank(int rank) {
        this.rank = rank;
    }
    public String getSeasonId() {
        return seasonId;
    }
    public void setSeasonId(String seasonId) {
        this.seasonId = seasonId;
    }
    public String getDriverId() {
        return driverId;
    }
    public void setDriverId(String driverId) {
        this.driverId = driverId;
    }
    public String getDriverName() {
        return driverName;
    }
    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }
    public String getDriverCategory() {
        return driverCategory;
    }
    public void setDriverCategory(String driverCategory) {
        this.driverCategory = driverCategory;
    }
    public int getWinCount() {
        return winCount;
    }
    public void setWinCount(int winCount) {
        this.winCount = winCount;
    }
    public int getTotalPoints() {
        return totalPoints;
    }
    public void setTotalPoints(int totalPoints) {
        this.totalPoints = totalPoints;
    }
}
