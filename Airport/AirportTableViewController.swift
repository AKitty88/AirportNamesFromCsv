//
//  AirportTableViewController.swift
//  Airport
//
//  Created by User on 17/2/21.
//

import UIKit

class AirportTableViewController: UITableViewController {
    var airportArray: [[String]]?
    var selectedRowNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        airportArray = CsvReader().readData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return airportArray?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return airportArray?.first?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "airport", for: indexPath)
        cell.textLabel?.text = airportArray?[indexPath.section][3] ?? ""
        cell.detailTextLabel?.text = airportArray?[indexPath.section][4] ?? ""
         

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRowNumber = indexPath.row
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DetailViewController else { return }
        
        if (selectedRowNumber < (airportArray?.count ?? 1)) {
            vc.airport = airportArray?[selectedRowNumber]
        }
    }
}
