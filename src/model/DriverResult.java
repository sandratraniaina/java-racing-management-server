package model;

import java.io.Serializable;

import annotation.Column;
import annotation.Table;

@Table("v_driver_global_ps_total_points")
public class DriverResult implements Serializable{
    @Column("rank")
    Long rank;

    @Column("season_id")
    String seasonId;

    @Column("id")
    String driverId;

    @Column("driver_name")
    String driverName;

    @Column("driver_category")
    String driverCategory;

    @Column("win_count")
    Long winCount;

    @Column("total_points")
    Long totalPoints;

    //Constructor
    public DriverResult() {}

    // Getters and setters
    public Long getRank() {
        return rank;
    }
    public void setRank(Long rank) {
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
    public Long getWinCount() {
        return winCount;
    }
    public void setWinCount(Long winCount) {
        this.winCount = winCount;
    }
    public Long getTotalPoints() {
        return totalPoints;
    }
    public void setTotalPoints(Long totalPoints) {
        this.totalPoints = totalPoints;
    }
}
